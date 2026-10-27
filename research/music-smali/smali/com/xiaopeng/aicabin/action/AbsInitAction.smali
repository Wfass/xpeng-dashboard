.class public abstract Lcom/xiaopeng/aicabin/action/AbsInitAction;
.super Ljava/lang/Object;
.source "AbsInitAction.java"

# interfaces
.implements Lcom/xiaopeng/aicabin/action/IAction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onCreate(Landroid/content/Context;)V
.end method

.method public abstract onDestroy(Landroid/content/Context;)V
.end method
