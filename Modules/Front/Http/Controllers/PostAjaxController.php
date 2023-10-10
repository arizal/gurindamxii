<?php

namespace Modules\Front\Http\Controllers;

use Illuminate\Contracts\Support\Renderable;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;

use Illuminate\Support\Facades\DB;

class PostAjaxController extends Controller
{
    public $table_pengetahuan                   ="pengetahuan";
    public $table_pengetahuan_like              ="pengetahuan_like";
    public $table_pengetahuan_pinned            ="pengetahuan_pinned";
    public $table_pengetahuan_readlist          ="pengetahuan_readlist";
    public $table_pengetahuan_readlist_content  ="pengetahuan_readlist_content";
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
        $id_user    =5;
        //
        // print "<pre>";
        // print_r($_POST);
        $data_pg    = DB::table($this->table_pengetahuan)->where('pgPermalink', $request->id)->first();
        if($request->type_options ==="like"){
            $note_response="Sukai";
            $data_check = DB::table($this->table_pengetahuan_like)->where('pgId', $data_pg->pgId)->where('id_user', $id_user)->count();

            $payload=[
                'id_user'     => $id_user,
                'pgId'        => $data_pg->pgId,
                'created_at'  => date("Y-m-d H:i:s"),
            ];
            $table_name_for_saving=$this->table_pengetahuan_like;
        }
        if($request->type_options ==="pin"){
            $note_response="Tandai";
            $data_check = DB::table($this->table_pengetahuan_pinned)->where('pgId', $data_pg->pgId)->where('id_user', $id_user)->count();
            
            $payload=[
                'id_user'     => $id_user,
                'pgId'        => $data_pg->pgId,
                'created_at'  => date("Y-m-d H:i:s"),
            ];
            $table_name_for_saving=$this->table_pengetahuan_pinned;
        }
        if($request->type_options ==="read_later"){
            $note_response="Daftar Baca";

            $data_check     = DB::table($this->table_pengetahuan_readlist)
                                        ->leftJoin($this->table_pengetahuan_readlist_content, $this->table_pengetahuan_readlist.'.rlId', '=', $this->table_pengetahuan_readlist_content.'.rlId')
                                        ->where($this->table_pengetahuan_readlist_content.'.pgId', $data_pg->pgId)
                                        ->where($this->table_pengetahuan_readlist.'.id_user', $id_user)
                                        ->count();
            
            $query_check    = DB::table($this->table_pengetahuan_readlist)
                                        ->select("rlId")
                                        ->where('id_user', $id_user);
            $data_readlist_id=$query_check->first();
            if($query_check->count()==0){
                #rlId 	id_user 	rlTitle 	rlPermalink 	rlDescription 	created_at 	updated_at 	
                $next_readlist=$this->nextid("pengetahuan_readlist","rlId");
                $payload_readlist=[
                    'rlId'          =>$next_readlist,
                    'id_user'       =>$id_user,
                    'rlTitle'       =>"BACA_NANTI",
                    'rlPermalink'   =>$next_readlist."-".\Str::slug("BACA NANTI"),
                    'rlDescription' =>'Baca Nanti Description',
                    'created_at'    =>date("Y-m-d H:i:s"),
                ];
                $save_rltetc=DB::table($this->table_pengetahuan_readlist)->insert($payload_readlist);

                $id_read_list=$next_readlist;
            }else{
                $id_read_list=$data_readlist_id->rlId;
            }
            $payload=[
                'id_user'     => $id_user,
                'rlId'        => $id_read_list,
                'pgId'        => $data_pg->pgId,
                'created_at'  => date("Y-m-d H:i:s"),
            ];                            
            $table_name_for_saving=$this->table_pengetahuan_readlist_content;
        }
        
        if($data_check==0){
            $save_pinetc=DB::table($table_name_for_saving)->insert($payload);
            
            $response=[
                'success'   =>"Berhasil",
                "ID"        =>$request->id,
                "TITLE"     =>$data_pg->pgTitle,
                "NOTE"      =>($request->type_options !== "read_later" ? "ke dalam daftar yang anda ".$note_response : "ke dalam Daftar Baca Anda"),
                "ICON"      =>"/assets/images/check.png",
            ];
        }else{
            $response=[
                'success'   =>"Gagal",
                "ID"        =>$request->id,
                "TITLE"     =>$data_pg->pgTitle,
                "NOTE"      =>($request->type_options !== "read_later" ? "karena Sudah ada di dalam daftar yang anda ".$note_response : "Karena Sudah ada di dalam Daftar Baca Anda"),
                "ICON"      =>"/assets/images/cross.png",
            ];
        }
        // print_r($data_check);
        // exit;

        return response()->json($response);
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

    public function post_rating(Request $request,$id){
        $response=array("success"=>"ok");
        return response()->json($response);
        exit;
    }
}
