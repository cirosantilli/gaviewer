function flat_tangent(A) { 
  // this results in a tangent element, proportional in weight to A
  // and located at the normal point closest to the origin
  // for tangent bivectors (grade 3) preferred dm6 (swirl)
  // (c3ga)
  noi = no^ni;
  E = lcont(-ni,rcont(A,-no));      // Euclidean attitude
  T = tv( ((rcont(A,-no)/E)^noi)noi );  // translation to normal point
  return ori(T no^E /T);
}

