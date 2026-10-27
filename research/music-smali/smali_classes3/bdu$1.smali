.class Lbdu$1;
.super Ljava/lang/Object;
.source "MusicAccountManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbdu;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbdu;


# direct methods
.method constructor <init>(Lbdu;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lbdu$1;->a:Lbdu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 68
    iget-object v0, p0, Lbdu$1;->a:Lbdu;

    invoke-static {v0}, Lbdu;->a(Lbdu;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lbdu;->a(IZ)V

    return-void
.end method
