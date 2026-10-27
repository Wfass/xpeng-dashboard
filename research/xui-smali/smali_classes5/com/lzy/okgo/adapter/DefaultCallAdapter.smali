.class public Lcom/lzy/okgo/adapter/DefaultCallAdapter;
.super Ljava/lang/Object;
.source "DefaultCallAdapter.java"

# interfaces
.implements Lcom/lzy/okgo/adapter/CallAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/lzy/okgo/adapter/CallAdapter<",
        "TT;",
        "Lcom/lzy/okgo/adapter/Call<",
        "TT;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    .local p0, "this":Lcom/lzy/okgo/adapter/DefaultCallAdapter;, "Lcom/lzy/okgo/adapter/DefaultCallAdapter<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adapt(Lcom/lzy/okgo/adapter/Call;Lcom/lzy/okgo/adapter/AdapterParam;)Lcom/lzy/okgo/adapter/Call;
    .locals 0
    .param p2, "param"    # Lcom/lzy/okgo/adapter/AdapterParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/adapter/Call<",
            "TT;>;",
            "Lcom/lzy/okgo/adapter/AdapterParam;",
            ")",
            "Lcom/lzy/okgo/adapter/Call<",
            "TT;>;"
        }
    .end annotation

    .line 31
    .local p0, "this":Lcom/lzy/okgo/adapter/DefaultCallAdapter;, "Lcom/lzy/okgo/adapter/DefaultCallAdapter<TT;>;"
    .local p1, "call":Lcom/lzy/okgo/adapter/Call;, "Lcom/lzy/okgo/adapter/Call<TT;>;"
    return-object p1
.end method

.method public bridge synthetic adapt(Lcom/lzy/okgo/adapter/Call;Lcom/lzy/okgo/adapter/AdapterParam;)Ljava/lang/Object;
    .locals 0

    .line 27
    .local p0, "this":Lcom/lzy/okgo/adapter/DefaultCallAdapter;, "Lcom/lzy/okgo/adapter/DefaultCallAdapter<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/lzy/okgo/adapter/DefaultCallAdapter;->adapt(Lcom/lzy/okgo/adapter/Call;Lcom/lzy/okgo/adapter/AdapterParam;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    return-object p1
.end method
