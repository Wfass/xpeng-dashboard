.class Lbee$4$1;
.super Ljava/lang/Object;
.source "XmlyManagerModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbee$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbee$4;


# direct methods
.method constructor <init>(Lbee$4;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lbee$4$1;->a:Lbee$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 156
    iget-object v0, p0, Lbee$4$1;->a:Lbee$4;

    iget-object v0, v0, Lbee$4;->a:Lbee;

    invoke-virtual {v0}, Lbee;->b()V

    return-void
.end method
