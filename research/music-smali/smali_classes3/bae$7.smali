.class Lbae$7;
.super Ljava/lang/Object;
.source "MusicInfoOperationBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbae;->b(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lbae;


# direct methods
.method constructor <init>(Lbae;Ljava/util/List;)V
    .locals 0

    .line 548
    iput-object p1, p0, Lbae$7;->b:Lbae;

    iput-object p2, p0, Lbae$7;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 551
    iget-object v0, p0, Lbae$7;->b:Lbae;

    iget-object v1, p0, Lbae$7;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lbae;->a(Lbae;Ljava/util/List;)V

    return-void
.end method
