.class Lbix$2$2;
.super Ljava/lang/Object;
.source "MusicReplayDownBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbix$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbix$2;


# direct methods
.method constructor <init>(Lbix$2;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lbix$2$2;->a:Lbix$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 311
    iget-object v0, p0, Lbix$2$2;->a:Lbix$2;

    iget-object v0, v0, Lbix$2;->a:Lbix$a;

    invoke-interface {v0}, Lbix$a;->c()V

    return-void
.end method
