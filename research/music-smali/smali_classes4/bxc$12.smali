.class Lbxc$12;
.super Ljava/lang/Object;
.source "TTSEngineProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbxc;->c(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lbxc;


# direct methods
.method constructor <init>(Lbxc;Ljava/lang/String;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lbxc$12;->b:Lbxc;

    iput-object p2, p0, Lbxc$12;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 99
    iget-object v0, p0, Lbxc$12;->b:Lbxc;

    iget-object v1, p0, Lbxc$12;->a:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lbxc;->a(Ljava/lang/String;IIILbww;)Ljava/lang/String;

    return-void
.end method
