.class public Lcom/xiaopeng/speech/vui/constants/Foo;
.super Ljava/lang/Object;
.source "Foo.java"


# static fields
.field private static sContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 14
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0

    .line 10
    sput-object p0, Lcom/xiaopeng/speech/vui/constants/Foo;->sContext:Landroid/content/Context;

    return-void
.end method
