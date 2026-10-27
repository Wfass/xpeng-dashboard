.class Lbxc$1$1;
.super Ljava/lang/Object;
.source "TTSEngineProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbxc$1;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lbxc$1;


# direct methods
.method constructor <init>(Lbxc$1;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lbxc$1$1;->c:Lbxc$1;

    iput-object p2, p0, Lbxc$1$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lbxc$1$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 36
    iget-object v0, p0, Lbxc$1$1;->c:Lbxc$1;

    iget-object v0, v0, Lbxc$1;->a:Lbxc;

    invoke-static {v0}, Lbxc;->a(Lbxc;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lbxc$1$1;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbww;

    if-eqz v0, :cond_0

    .line 38
    iget-object v1, p0, Lbxc$1$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lbxc$1$1;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lbww;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
