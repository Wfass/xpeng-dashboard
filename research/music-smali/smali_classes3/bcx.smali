.class public Lbcx;
.super Lbcv;
.source "LiveUpdate.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lbcv;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lbcv$a;)V
    .locals 3

    .line 18
    invoke-static {}, Lbew;->a()Lbew;

    move-result-object v0

    iget-object v1, p0, Lbcx;->b:Ljava/lang/String;

    new-instance v2, Lbcx$1;

    invoke-direct {v2, p0, p1}, Lbcx$1;-><init>(Lbcx;Lbcv$a;)V

    invoke-virtual {v0, v1, v2}, Lbew;->c(Ljava/lang/String;Lbkv;)Lcom/lzy/okgo/adapter/Call;

    return-void
.end method
