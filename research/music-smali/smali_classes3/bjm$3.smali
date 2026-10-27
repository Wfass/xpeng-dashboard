.class Lbjm$3;
.super Ljava/lang/Object;
.source "SongQualityChooseDialog.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/music/tone/view/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbjm;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbjm;


# direct methods
.method constructor <init>(Lbjm;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lbjm$3;->a:Lbjm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 124
    iget-object v0, p0, Lbjm$3;->a:Lbjm;

    invoke-virtual {v0}, Lbjm;->dismiss()V

    return-void
.end method
