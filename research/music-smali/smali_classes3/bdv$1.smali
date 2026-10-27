.class Lbdv$1;
.super Ljava/lang/Object;
.source "QqManagerModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbdv;->receiveMusicBinded(Lasj$m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbdv;


# direct methods
.method constructor <init>(Lbdv;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lbdv$1;->a:Lbdv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 43
    iget-object v0, p0, Lbdv$1;->a:Lbdv;

    invoke-virtual {v0}, Lbdv;->b()V

    return-void
.end method
