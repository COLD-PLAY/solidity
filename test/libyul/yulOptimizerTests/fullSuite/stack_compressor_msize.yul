{
	let a

	function f() -> out
	{
		out := extcodesize(address())
	}

	function foo_singlereturn_0() -> out
	{
		mstore(lt(or(gt(1,or(or(gt(or(or(or(1,gt(or(gt(or(or(keccak256(f(),or(gt(not(f()),1),1)),1),not(1)),f()),1),f())),lt(or(1,sub(f(),1)),1)),f()),1),1),gt(not(f()),1))),1),1),1)
		sstore(not(f()),1)
	}

	function foo_singlereturn_1(in_1, in_2) -> out
	{
		extcodecopy(1,f(),1,1)
	}

	a := foo_singlereturn_0()
	sstore(0,0)
	sstore(2,1)

	a := foo_singlereturn_1(calldataload(0),calldataload(3))
	sstore(0,0)
	sstore(3,1)
}
// ----
// step: fullSuite
//
// {
//     {
//         let _1 := 1
//         let _2 := gt(not(extcodesize(address())), _1)
//         let _3 := extcodesize(address())
//         let _4 := not(0)
//         mstore(lt(or(gt(_1, or(or(gt(or(or(or(gt(or(gt(_4, extcodesize(address())), _1), extcodesize(address())), lt(or(_1, add(extcodesize(address()), _4)), _1)), _3), _1), _1), _2), _1)), _1), _1), _1)
//         sstore(not(extcodesize(address())), _1)
//         sstore(0, 0)
//         sstore(2, _1)
//         extcodecopy(_1, extcodesize(address()), _1, _1)
//         sstore(0, 0)
//         sstore(3, _1)
//     }
// }
