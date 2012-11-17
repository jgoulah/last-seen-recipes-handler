
class LastSeenRecipesHandler < Chef::Handler
  def report
    last_seen_recipes = node.run_state[:seen_recipes].keys
    Chef::Log.debug("seen recipes handler recipe dump");
    Chef::Log.debug(last_seen_recipes)

    node.set[:last_seen_recipes] = []
    unless last_seen_recipes.empty?
      node.set[:last_seen_recipes] = last_seen_recipes
    end
    node.save
  end
end
