<?php

namespace App\Http\Controllers;

use App\Models\Brand;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;

class BrandController extends Controller
{

    public function index(): JsonResponse
    {
        $brands = Brand::all();
        return response()->json($brands);
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
        $brand = new Brand();
        $brand->name = $request->input('name');
        $brand->image = $request->input('image');
        $brand->save();

        return response()->json($brand);
    }

    /**
     * Display the specified resource.
     */
    public function show(Brand $brand_id): JsonResponse
    {
        $brand = Brand::find($brand_id);
        return response()->json($brand);
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
    public function update(Request $request, int $id)
    {
        $brand = Brand::find($id);
        if ($brand !== null) {
            $brand->name = $request->input('name');
            $brand->image = $request->input('image');
            $brand->save();
            return Brand::find($id);
            // return $this->create($request, $brand);
            // return view('api', [
            //    "brand" => $brand,
            //    "request_brand" => $request->input('brand'),
            //    "request_image" => $request->input('image')
            // ]);
        } else {
            return response(['error' => true, 'message' => "404. Resource not found, The brand doesn't exist"], 404);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request, int $id)
    {
        $brand = Brand::find($id);
        $brand->delete();
    }
}
