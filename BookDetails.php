<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller; 
use App\Book; 
use Illuminate\Support\Facades\Auth; 
use Illuminate\Support\Facades\Mail;
use Validator;

class BookDetails extends Controller
{
    //
	function insert(Request $req)
	{
		date_default_timezone_set('Asia/Kolkata');
		$date = date('d-m-y h:i:s');
		//return $req->input();
		$book = new Book;
		$book->sid=1;
		$book->bname=$req->bname;
		$book->bauthor=$req->authorName;
		$book->bprice=$req->bookPrice;
		$book->dccno=$req->bookdcc;
		$book->reg_date=$date;
		
		$book->save();
		
		return view('bookAdd',['data'=>'Book Added']);
	}
	
	function update(Request $req)
	{
		//print_r($req->input());
		Book::where('bname',$req->bname)->update(['bauthor'=>$req->authorName,'bprice'=>$req->bookPrice,'dccno'=>$req->bookdcc]);
		return view('bookUpdate',['data'=>'Book Added']);
	}
	
	
	function deleteRec(Request $req)
	{
		//print_r($req->input());
		$book = Book::where('bname',$req->bname)->delete();
		$to_name = "Gaurav Kumar";
		$to_email="gaurav.kk566@gmail.com";
		$data = array('name'=>'Peter','body'=>"Tesing mail Ok ");
		Mail::send('mail',$data,function($message) use ($to_name,$to_email){
			$message->to($to_email)->subject('Web Tesing Mail');
		});
		
		echo "email has been send";
		//return view('BookDetailsDelete',['data'=>'Book deleted']);
	}
	
}
