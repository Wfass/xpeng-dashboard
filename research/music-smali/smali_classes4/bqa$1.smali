.class Lbqa$1;
.super Ljava/lang/Object;
.source "BusinessSyncInitTask.java"

# interfaces
.implements Lanx$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbqa;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbqa;


# direct methods
.method constructor <init>(Lbqa;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lbqa$1;->a:Lbqa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 78
    invoke-static {}, Lbrz;->a()Lbrz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbrz;->a(Ljava/util/Map;)V

    return-void
.end method

.method public b(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 83
    invoke-static {}, Lbeb;->a()Lbeb;

    move-result-object v0

    invoke-virtual {v0}, Lbeb;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "openid"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
