.class Lazs$1;
.super Ljava/lang/Object;
.source "LatelyMusicOperationBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lazs;->c(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lazs;


# direct methods
.method constructor <init>(Lazs;Ljava/util/List;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lazs$1;->b:Lazs;

    iput-object p2, p0, Lazs$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 109
    iget-object v0, p0, Lazs$1;->b:Lazs;

    iget-object v1, p0, Lazs$1;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lazs;->b(Ljava/util/List;)V

    return-void
.end method
