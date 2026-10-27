.class final Laqn$1;
.super Ljava/lang/Object;
.source "XmlyLoginFlowManager.java"

# interfaces
.implements Laql$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laqn;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private a:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Laqn$1;->a:Z

    const/16 v0, 0x2711

    .line 75
    invoke-static {v0}, Laqn;->a(I)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 69
    iget-boolean v0, p0, Laqn$1;->a:Z

    invoke-static {p1, p2, v0}, Laqn;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
