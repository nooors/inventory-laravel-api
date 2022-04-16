<?php

namespace App\Http\Controllers;

use App\Models\BrandModel;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class BrandModelController extends Controller
{

    public function index(): JsonResponse
    {
        $response = BrandModel::all();
        return response()->json($response);
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
        $brandModel = new BrandModel();
        $brandModel->brand = $request->input('brandModel');
        $brandModel->image = $request->input('image');
        
        return response()->json($brandModel);
    }


    public function show($id): JsonResponse
    {
        $brandModel = BrandModel::find($id);
        return response()->json($brandModel);
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
    public function update(Request $request, int $id): JsonResponse
    {
        $brandModel = BrandModel::find($id);
        $brandModel->brand = $request->input('brandModel');
        $brandModel->image = $request->input('image');
        $brandModel->save();

        return response()->json($brandModel);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id): JsonResponse
    {
        $brandModel = BrandModel::find($id);
        $brandModel->delete();

        return response()->json($brandModel);
    }
}
