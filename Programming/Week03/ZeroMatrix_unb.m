function [ A_out ] = ZeroMatrix_unb( A )

  [ AL, AR ] = FLA_Part_1x2( A, ...
                               0, 'FLA_RIGHT' );

  while ( size( AR, 2 ) < size( A, 2 ) )

    [ A0, a1, A2 ]= FLA_Repart_1x2_to_1x3( AL, AR, ...
                                         1, 'FLA_LEFT' );

    %------------------------------------------------------------%

    a1 = laff_zerov(a1);

    %------------------------------------------------------------%

    [ AL, AR ] = FLA_Cont_with_1x3_to_1x2( A0, a1, A2, ...
                                           'FLA_RIGHT' );

  end

  A_out = [ AL, AR ];

return