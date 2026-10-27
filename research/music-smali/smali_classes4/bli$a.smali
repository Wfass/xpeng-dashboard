.class public final Lbli$a;
.super Ljava/lang/Object;
.source "PlayerEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbli;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lbli$a;->a:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .locals 1

    .line 41
    iget-object v0, p0, Lbli$a;->a:Landroid/os/Bundle;

    return-object v0
.end method
