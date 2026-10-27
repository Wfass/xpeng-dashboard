.class Lbee$1;
.super Ljava/lang/Object;
.source "XmlyManagerModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbee;->receiveReadingBinded(Lasj$ab;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbee;


# direct methods
.method constructor <init>(Lbee;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lbee$1;->a:Lbee;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 59
    iget-object v0, p0, Lbee$1;->a:Lbee;

    invoke-virtual {v0}, Lbee;->b()V

    return-void
.end method
