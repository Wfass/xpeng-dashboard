.class Lbdb$3;
.super Ljava/lang/Object;
.source "RadioDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbdb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbdb;


# direct methods
.method constructor <init>(Lbdb;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lbdb$3;->a:Lbdb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 152
    iget-object v0, p0, Lbdb$3;->a:Lbdb;

    invoke-virtual {v0}, Lbdb;->h()V

    return-void
.end method
