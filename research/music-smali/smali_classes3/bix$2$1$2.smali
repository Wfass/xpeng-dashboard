.class Lbix$2$1$2;
.super Ljava/lang/Object;
.source "MusicReplayDownBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbix$2$1;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbix$2$1;


# direct methods
.method constructor <init>(Lbix$2$1;)V
    .locals 0

    .line 296
    iput-object p1, p0, Lbix$2$1$2;->a:Lbix$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 299
    iget-object v0, p0, Lbix$2$1$2;->a:Lbix$2$1;

    iget-object v0, v0, Lbix$2$1;->a:Lbix$2;

    iget-object v0, v0, Lbix$2;->a:Lbix$a;

    invoke-interface {v0}, Lbix$a;->b()V

    return-void
.end method
