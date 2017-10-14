function sLog(spinor) {
    function unit(a);
    plane = unit(grade(spinor,2));
    return log(norm(spinor))+plane*atan2(grade(spinor/plane,0),grade(spinor,0));
}
