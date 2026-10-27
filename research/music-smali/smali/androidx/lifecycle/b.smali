.class public Landroidx/lifecycle/b;
.super Landroidx/lifecycle/z;
.source "AndroidViewModel.java"


# instance fields
.field private a:Landroid/app/Application;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroidx/lifecycle/z;-><init>()V

    .line 35
    iput-object p1, p0, Landroidx/lifecycle/b;->a:Landroid/app/Application;

    return-void
.end method
