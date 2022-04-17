<?php

namespace App\Http\Controllers;

use App\Models\Family;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Http\Response;

class FamilyController extends Controller
{

    public function index(): JsonResponse
    {
        $families = Family::all();
        return response()->json($families);
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
        $family = new Family();
        $family->name = $request()->input('name');
        $family->image = $request()->input('image');

        $family->save();

        return response('Item stored succesfully', 200)->json($family);
    }


    public function show(int $family_id): JsonResponse
    {
        $family = Family::find($family_id);

        return response()->json($family);
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
        $family = Family::find($id);
        $family->name = $request()->input('name');
        $family->image = $request()->input('image');

        $family->save();

        return response('Item stored succesfully', 200)->json($family);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id): Response
    {
        $family = Family::find($id);
        $family->delete();

        return response('Item deleted succesfully', 200);
    }
}
