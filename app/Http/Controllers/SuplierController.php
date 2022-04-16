<?php

namespace App\Http\Controllers;

use App\Models\Suplier;
use Illuminate\Http\Request;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Response;

class SuplierController extends Controller
{

    public function index(): \Illuminate\Http\JsonResponse
    {
        $supliers = Suplier::all();

        return response()->json($supliers);
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
        $suplier = Suplier::create([
            'name' => $request->name,
            'email' => $request->email,
            'telephone' => $request->telephone,
            'contact' => $request->contact,
            'image' => $request->image
        ]);

        return response('Item updated successfully', 200)->json($suplier);
    }

    /**
     * Display the specified resource.
     */
    public function show(int $suplier_id): \Illuminate\Http\JsonResponse
    {
        $suplier = Suplier::find($suplier_id);

        return response()->json($suplier);
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
        $suplier = Suplier::find($id);

        $suplier->update($request->validate());

        return response('Item updated successfully', 200)->json($suplier);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(int $id):Response
    {
        $suplier = Suplier::find($id);
        $suplier -> delete();

        return response('Item delted successfully', 200);
    }
}
