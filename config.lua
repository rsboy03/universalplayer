--[[ Universal Player: a free resource with public source (Universal Player Licence 1.0: free to use, not for sale or re-upload). No support is given and nothing is guaranteed.
     You install it, and play links with it, at your own risk: make sure your server is allowed to play what your
     players paste (platform rules and music rights are yours to follow). ]]

Config = {}

Config.Command = 'upl'           -- opens the player (/upl)
Config.Key = ''                  -- default key for the player (players can change it in GTA's key settings); '' = none

-- Who may play links: 'everyone', or 'ace' (players with the ace below), or a list of jobs { 'dj', 'police' }
Config.Permission = 'everyone'
Config.Ace = 'universalplayer.use'

Config.Sources = {
    youtube = true,              -- youtube.com / youtu.be links
    direct = true,               -- https links to mp3 / ogg / m4a files and internet radio streams
}
-- Only these sites for direct links (empty = any https site)
Config.AllowedHosts = {}

Config.MaxLinkLength = 300
Config.LinksPerMinute = 6        -- per player

-- Without a supported audio script: how far the music carries, in metres
Config.Range = { car = 35.0, onFoot = 20.0 }
Config.DefaultVolume = 0.6

-- Audio scripts that take extensions are found on their own; list any you do not want it to play through.
Config.Skip = {
    -- ['some-audio-script'] = true,
}

-- Spotify (off until you switch it on and set your own Spotify app; the set-up is in README.md, "Spotify").
-- Every player links their own Spotify Premium; when someone plays a Spotify link, each linked listener nearby plays the
-- same song on their own account, in step. Nobody's account is shared, and no client secret is used anywhere.
Config.Spotify = {
    enabled = false,
    clientId = '',               -- the Client ID of YOUR app at developer.spotify.com/dashboard (not a secret)
    -- Where Spotify sends a player back after they sign in. Add exactly this address to your app's Redirect URIs.
    -- The 127.0.0.1 default works only when the game and the server run on the same PC (testing). For your players,
    -- use your server's public https address, e.g. https://<name>-<id>.users.cfx.re/universalplayer/spotify/callback
    -- (the path is /<this resource's folder name>/spotify/callback).
    redirectUri = 'http://127.0.0.1:30120/universalplayer/spotify/callback',
    maxTracks = 100,             -- songs taken from an album or playlist, played in order
}
