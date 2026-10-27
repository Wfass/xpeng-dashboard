.class Lbuf$2$1;
.super Lbui$a;
.source "ConnectManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbuf$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/Object;

.field final synthetic b:Lbuf$2;


# direct methods
.method constructor <init>(Lbuf$2;[Ljava/lang/Object;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lbuf$2$1;->b:Lbuf$2;

    iput-object p2, p0, Lbuf$2$1;->a:[Ljava/lang/Object;

    invoke-direct {p0}, Lbui$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .line 112
    iget-object v0, p0, Lbuf$2$1;->a:[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    const-string v4, "ConnectManager"

    const-string v5, "queryBinder onConnect"

    .line 113
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    check-cast v3, Lbuf$a;

    iget-object v4, p0, Lbuf$2$1;->b:Lbuf$2;

    iget-object v4, v4, Lbuf$2;->a:Lbuf;

    invoke-static {v4}, Lbuf;->a(Lbuf;)Lbun;

    move-result-object v4

    invoke-interface {v3, v4}, Lbuf$a;->a(Lbun;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
