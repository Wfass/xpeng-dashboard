.class Lbcw$a;
.super Lbcw$c;
.source "LiveDataProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbcw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lbcw$b;)V
    .locals 0

    .line 374
    invoke-direct {p0, p2}, Lbcw$c;-><init>(Lbcw$b;)V

    .line 375
    iput-object p1, p0, Lbcw$a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 379
    invoke-static {}, Lbew;->a()Lbew;

    move-result-object v0

    iget-object v1, p0, Lbcw$a;->c:Ljava/lang/String;

    invoke-static {}, Lbcl;->a()Lbcl;

    move-result-object v2

    invoke-virtual {v2}, Lbcl;->b()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lbcw$a$1;

    invoke-direct {v3, p0}, Lbcw$a$1;-><init>(Lbcw$a;)V

    invoke-virtual {v0, v1, v2, v3}, Lbew;->a(Ljava/lang/String;Ljava/lang/String;Lbkv;)Lcom/lzy/okgo/adapter/Call;

    return-void
.end method
