#include <bits/stdc++.h>
using namespace std;

// Type aliases
using ll  = long long;
using vi  = std::vector<int>;
using vll = std::vector<ll>;
using pii = std::pair<int, int>;
using pll = std::pair<ll, ll>;

// Macros
#define pb push_back
#define mp make_pair
#define fi first
#define se second
#define all(x) (x).begin(), (x).end()
#define sz(x) (int)(x).size()
#define rep(i, a, b) for(int i = a; i < (b); ++i)
#define per(i, a, b) for(int i = b - 1; i >= a; --i)

// Constants
// const int MOD = 1e9 + 7;
// const int INF = 0x3f3f3f3f;
// const ll LLINF = 0x3f3f3f3f3f3f3f3fLL;

// Fast I/O
void setIO([[maybe_unused]] string name = "") {
    ios_base::sync_with_stdio(false);
    cin.tie(nullptr);
    #ifndef LOCAL
    if (sz(name)) {
        freopen((name + ".in").c_str(), "r", stdin);
        freopen((name + ".out").c_str(), "w", stdout);
    }
    #endif
}

void solve() {
    
}

int main() {
    setIO(); // Problem name if file IO

    int t = 1;
    // cin >> t; // Multi-test case
    
    while (t--) {
        solve();
    }
    
    return 0;
}
