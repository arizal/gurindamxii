<?php

namespace Modules\Front\Http\Controllers;

use Illuminate\Contracts\Support\Renderable;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;

use App\Mail\MySendMail;
use Illuminate\Support\Facades\Mail;

use Illuminate\Support\Facades\DB;

class ContactusController extends Controller
{
    /**
     * Display a listing of the resource.
     * @return Renderable
     */
    public function index()
    {
        return view('front::index');
    }

    /**
     * Show the form for creating a new resource.
     * @return Renderable
     */
    public function create()
    {
        return view('front::create');
    }

    /**
     * Store a newly created resource in storage.
     * @param Request $request
     * @return Renderable
     */
    public function store(Request $request)
    {
        //
        // print "<pre>";
        // print_r($_POST);
        // print "<hr>";
        // if(!empty($_SERVER['HTTP_CLIENT_IP'])) {  
        //     echo 'IP address = '.$_SERVER['HTTP_CLIENT_IP'];  
        // }  
        // //if user is from the proxy  
        // elseif (!empty($_SERVER['HTTP_X_FORWARDED_FOR'])) {  
        //     echo 'IP address = '.$_SERVER['HTTP_X_FORWARDED_FOR'];  
        // }  
        // //if user is from the remote address  
        // else{  
        //     echo 'IP address = '.$_SERVER['REMOTE_ADDR'];  
        // } 

        // print "<hr>";
        // echo "IP Address of client " . getenv("REMOTE_ADDR");


        $details = [
            'from' => [
                    'address' => 'gurindam@gmail.com', 
                    'name' => 'Gurindam Kanreg XII'],

            'nama' => $request->cnname,
            'HP' => $request->cnhp,
            'isi Pesan' => $request->cnmessage,
            
        ];

        $send_mail=Mail::to($request->cnemail)->send(new MySendMail($details));
        if($send_mail){
            #cuId 	cuTitle 	cuPermalink 	cuParent 	cuHP cuEmail	cuType 	cuMessage 	id_user 	created_at 	updated_at 	
            #nextid
            /*
            [_token] => VrStcIkDdbLZFKrRKL5Ft1PhO2D5gRG0LdKqdEv3
            [cnname] => arizal nur rohman
            [cnemail] => arizalnurrohman13@gmail.com
            [cnhp] => 085265266005
            [cntype] => Kritik
            [cntitle] => ini test kiri email dari Gurindam ya
            [cnmessage] => isi pesan tek*/
            $cu_nextid=$this->nextid("contact_us","cuId");
            $cu_title = $cu_nextid."-".\Str::slug($request->cntitle);
            $payload=array(
                "cuId"          =>$cu_nextid,
                "cuTitle"       =>$request->cntitle,
                "cuPermalink"   =>$cu_title,
                "cuParent"      =>0,
                "cuName"        =>$request->cnname,
                "cuHP"          =>$request->cnhp,
                "cuEmail"       =>$request->cnemail,
                "cuType"        =>$request->cntype,
                "cuMessage"     =>$request->cnmessage,
                "id_user"       =>0,
                "cuRead"        =>"unread",
                "created_at"    =>date("Y-m-d H:i:s")
            );
            $save_contactus=DB::table("contact_us")->insert($payload);

            print "OK";
        }

        #return "Email telah dikirim!";
        
        exit;
    }

    /**
     * Show the specified resource.
     * @param int $id
     * @return Renderable
     */
    public function show($id)
    {
        return view('front::show');
    }

    /**
     * Show the form for editing the specified resource.
     * @param int $id
     * @return Renderable
     */
    public function edit($id)
    {
        return view('front::edit');
    }

    /**
     * Update the specified resource in storage.
     * @param Request $request
     * @param int $id
     * @return Renderable
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     * @param int $id
     * @return Renderable
     */
    public function destroy($id)
    {
        //
    }
    public function nextid($tablename,$fieldname){
        $order =DB::table($tablename)->max($fieldname);
		return ($order + 1);
    }
}
