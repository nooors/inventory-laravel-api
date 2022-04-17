<?php

namespace App\Http\Controllers;

use App\Models\Category;
use Illuminate\Http\Request;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Response;

class CategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(): JsonResponse
    {
        $response = Category::all();
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
        $category = new Category();
        $category -> name = $request->input('name');
        $category -> image = $request -> input ('image');
        
        return response()->json($category);
    }
    
    /**
     * Display the specified resource.
     */
    public function show(int $id_category): JsonResponse
    {
        $category = Category::find($id_category);
        return response()->json($category);
        
    }


    public function edit()
    {
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, int $id):JsonResponse
    {
        $category = Category::find($id);
        $category -> name = $request->input('name');
        $category -> image = $request -> input ('image');

        return response()->json($category);

    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(int $id): Response
    {
        $category = Category::find($id);
        $category->delete();

        return response("Item deleted succesfully", 200);
        
    }
}
