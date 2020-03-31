library(GMSE)

sim_1 <- gmse(manager_budget = 10000, user_budget = 10000, res_death_K = 93870,
              manage_target = 70000, RESOURCE_ini = 35000, plotting = FALSE,
              stakeholders = 8, land_ownership = TRUE, public_land = 0.4,
              scaring = FALSE, lambda = 0.275, remove_pr = 0.122, time_max = 30,
              res_death_type = 3, res_consume = 0.02, res_birth_K = 200000,
              observe_type = 3, agent_view = 1, converge_crit = 0.1,
              ga_mingen = 40);

test = gmse(time_max = 30, manager_budget = 10000, user_budget = 10000, 
            res_death_K = 93870, RESOURCE_ini = 3500)
