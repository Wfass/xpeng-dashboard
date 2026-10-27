.class Lbuf$3;
.super Ljava/lang/Object;
.source "ConnectManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbuf;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbuf;


# direct methods
.method constructor <init>(Lbuf;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lbuf$3;->a:Lbuf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 139
    iget-object v0, p0, Lbuf$3;->a:Lbuf;

    invoke-static {v0}, Lbuf;->c(Lbuf;)Lcom/xiaopeng/speech/common/util/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 141
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 142
    aget-object v2, v0, v1

    check-cast v2, Lbuf$a;

    invoke-interface {v2}, Lbuf$a;->a()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 145
    :cond_0
    invoke-static {}, Lbwe;->c()Lbwe;

    move-result-object v0

    invoke-virtual {v0}, Lbwe;->b()V

    .line 146
    iget-object v0, p0, Lbuf$3;->a:Lbuf;

    invoke-static {v0}, Lbuf;->d(Lbuf;)V

    return-void
.end method
