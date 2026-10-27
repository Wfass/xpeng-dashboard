.class Lbmt$15$1;
.super Ljava/lang/Object;
.source "ProgramModel.java"

# interfaces
.implements Lask$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbmt$15;->lowerVolume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbmt$15;


# direct methods
.method constructor <init>(Lbmt$15;)V
    .locals 0

    .line 349
    iput-object p1, p0, Lbmt$15$1;->a:Lbmt$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateSoundVolume(F)V
    .locals 1

    .line 352
    iget-object v0, p0, Lbmt$15$1;->a:Lbmt$15;

    iget-object v0, v0, Lbmt$15;->a:Lbmt;

    invoke-virtual {v0, p1}, Lbmt;->setVolume(F)Z

    return-void
.end method
