-- Create a Global Table to Store Application State
CreativeEmpowerment = {}

-- Create Functions to Calculate Creative Potential

-- Calculate Total Creative Potential
CreativeEmpowerment.TotalCreativePotential = function(creativity, expression)
	return creativity + expression;
end

-- Calculate Creative Potential by Expression
CreativeEmpowerment.CreativePotentialByExpression = function(expression)
	return expression * 2;
end

-- Calculate Creative Potential by Creativity
CreativeEmpowerment.CreativePotentialByCreativity = function(creativity)
	return creativity * 3;
end

-- Create a Table to Store Data
CreativeEmpowerment.Data = {}

-- Create Functions to Calculate Data

-- Calculate Creative Potential from Data
CreativeEmpowerment.Data.CalculatePotential = function(data)
	local creativity = data.creativity;
	local expression = data.expression;
	
	return CreativeEmpowerment.TotalCreativePotential(creativity, expression);
end

-- Calculate Creative Potential by Expression from Data
CreativeEmpowerment.Data.CalculatePotentialByExpression = function(data)
	local expression = data.expression;
	
	return CreativeEmpowerment.CreativePotentialByExpression(expression);
end

-- Calculate Creative Potential by Creativity from Data
CreativeEmpowerment.Data.CalculatePotentialByCreativity = function(data)
	local creativity = data.creativity;
	
	return CreativeEmpowerment.CreativePotentialByCreativity(creativity);
end

-- Create Helper Functions
CreativeEmpowerment.CalculateAllPotentials = function(data)
	local totalPotential = CreativeEmpowerment.Data.CalculatePotential(data);
	local potentialByExpression = CreativeEmpowerment.Data.CalculatePotentialByExpression(data);
	local potentialByCreativity = CreativeEmpowerment.Data.CalculatePotentialByCreativity(data);
	
	return {
		totalPotential = totalPotential,
		potentialByExpression = potentialByExpression,
		potentialByCreativity = potentialByCreativity
	};
end

-- Create a Table to Store Results
CreativeEmpowerment.Results = {}

-- Create Functions to Store and Access Results

-- Store Total Creative Potential
CreativeEmpowerment.Results.StoreTotalCreativePotential = function(result)
	CreativeEmpowerment.Results.totalCreativePotential = result.totalPotential;
end

-- Store Creative Potential by Expression
CreativeEmpowerment.Results.StorePotentialByExpression = function(result)
	CreativeEmpowerment.Results.potentialByExpression = result.potentialByExpression;
end

-- Store Creative Potential by Creativity
CreativeEmpowerment.Results.StorePotentialByCreativity = function(result)
	CreativeEmpowerment.Results.potentialByCreativity = result.potentialByCreativity;
end

-- Retrieve Total Creative Potential
CreativeEmpowerment.Results.GetTotalCreativePotential = function()
	return CreativeEmpowerment.Results.totalCreativePotential;
end

-- Retrieve Creative Potential by Expression
CreativeEmpowerment.Results.GetPotentialByExpression = function()
	return CreativeEmpowerment.Results.potentialByExpression;
end

-- Retrieve Creative Potential by Creativity
CreativeEmpowerment.Results.GetPotentialByCreativity = function()
	return CreativeEmpowerment.Results.potentialByCreativity;
end

-- Create a Function to Calculate and Store Creative Potential
CreativeEmpowerment.CalculateAndStorePotentials = function(data)
	-- Calculate All Potentials
	local result = CreativeEmpowerment.CalculateAllPotentials(data);
	
	-- Store Total Creative Potential
	CreativeEmpowerment.Results.StoreTotalCreativePotential(result);
	
	-- Store Creative Potential by Expression
	CreativeEmpowerment.Results.StorePotentialByExpression(result);
	
	-- Store Creative Potential by Creativity
	CreativeEmpowerment.Results.StorePotentialByCreativity(result);
end

-- Create a Function to Access Creative Potential
CreativeEmpowerment.AccessCreativePotential = function()
	-- Retrieve and Print Total Creative Potential
	local totalPotential = CreativeEmpowerment.Results.GetTotalCreativePotential();
	print("Total Creative Potential:", totalPotential);
	
	-- Retrieve and Print Creative Potential by Expression
	local potentialByExpression = CreativeEmpowerment.Results.GetPotentialByExpression();
	print("Creative Potential by Expression:", potentialByExpression);
	
	-- Retrieve and Print Creative Potential by Creativity
	local potentialByCreativity = CreativeEmpowerment.Results.GetPotentialByCreativity();
	print("Creative Potential by Creativity:", potentialByCreativity);
end