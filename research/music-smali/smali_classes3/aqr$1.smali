.class Laqr$1;
.super Ljava/lang/Object;
.source "AudioTypeControlModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laqr;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Laqr;


# direct methods
.method constructor <init>(Laqr;I)V
    .locals 0

    .line 118
    iput-object p1, p0, Laqr$1;->b:Laqr;

    iput p2, p0, Laqr$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 121
    iget-object v0, p0, Laqr$1;->b:Laqr;

    iget v1, p0, Laqr$1;->a:I

    invoke-virtual {v0, v1}, Laqr;->a(I)V

    return-void
.end method
