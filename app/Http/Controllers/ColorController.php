<?php

namespace App\Http\Controllers;

use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;

use App\Models\Color;
use Illuminate\Http\Response;

class ColorController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(): JsonResponse
    {
        $colors = Color::all();
        return response()->json($colors);
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
    public function store(Request $request): JsonResponse
    {
        $color = new Color();
        $color->color = $request->input('color');
        $color->code = $request->input('code');
        $color->order = $request->input('order');

        $color->save();

        return response('Item stored succesfully', 200)->json($color);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Color $color): JsonResponse
    {
        $color = Color::find($color);
        return response()->json($color);
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
        $color = Color::find($id);
        $color->color = $color->input('color');
        $color->code = $color->input('code');
        $color->order = $color->input('order');

        $color->save();

        return response('Item updated succesfully', 200)->json($color);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(int $id): Response
    {
        $color = Color::find($id);
        $color->delete();

        return response('Item deleted succesfully', 200);
    }
}
