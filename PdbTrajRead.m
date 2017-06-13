% Required functions: 
% PdbFirstFrame
% PdbNumFrms
% PdbTrajReadPos
  
% outputs: 
% 1. atom types(ATOM=1 or HETATM=2) and residue number in a array(atmGrpRes)
% 2. atom names in a cell(atmNam)
% 3. residue names in a cell(resNam)
% 4. number of atoms(nAtm) 

function [atmGrpRes, atmNam, resNam, nAtm, traj] = PdbTrajRead(trajFileName,nFrm)

[atmGrpRes, atmNam, resNam, nAtm] = PdbFirstFrame(trajFileName); 

% if the number of frames are not known
 if nargin < 2
     nFrm = PdbNumFrms(trajFileName);
 else
 traj = PdbTrajReadPos(trajFileName, nFrm, nAtm);
 end
