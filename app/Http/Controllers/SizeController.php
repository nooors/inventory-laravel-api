<?php

namespace App\Http\Controllers;

use App\Models\Size;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
class SizeController extends Controller
{
    
    public function index(): JsonResponse
    {
        $sizes = Size::all();

        return response()->json($sizes);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request):JsonResponse
    {
        $size = new Size();
        $size->name = $request()->input('name');

        $size->save();

        return response('Item stored succesfully', 200)->json($size);
    }

    
    public function show(int $size_id):JsonResponse
    {
        $size = Size::find($size_id);

        return response()->json($size);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, int $id):JsonResponse
    {
        $size = Size::find($id);
        $size->name = $request()->input('name');
        $size->save();

        return response('Item updated succesfully', 200)->json($size);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(int $id):Response
    {
        $size = Size::find($id);

        $size->delete();

        return response('Item deleted successfully', 200);
    }
}
