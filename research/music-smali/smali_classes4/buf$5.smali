.class Lbuf$5;
.super Ljava/lang/Object;
.source "ConnectManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbuf;
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

    .line 191
    iput-object p1, p0, Lbuf$5;->a:Lbuf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 194
    iget-object v0, p0, Lbuf$5;->a:Lbuf;

    invoke-virtual {v0}, Lbuf;->b()V

    return-void
.end method
