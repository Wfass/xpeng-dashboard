.class Landroidx/fragment/app/FragmentActivity$2;
.super Ljava/lang/Object;
.source "FragmentActivity.java"

# interfaces
.implements Lb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/FragmentActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/fragment/app/FragmentActivity;


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    .line 140
    iput-object p1, p0, Landroidx/fragment/app/FragmentActivity$2;->a:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1

    .line 143
    iget-object p1, p0, Landroidx/fragment/app/FragmentActivity$2;->a:Landroidx/fragment/app/FragmentActivity;

    iget-object p1, p1, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/e;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/e;->a(Landroidx/fragment/app/Fragment;)V

    .line 144
    iget-object p1, p0, Landroidx/fragment/app/FragmentActivity$2;->a:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSavedStateRegistry()Landroidx/savedstate/b;

    move-result-object p1

    const-string v0, "android:support:fragments"

    .line 145
    invoke-virtual {p1, v0}, Landroidx/savedstate/b;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 148
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    .line 149
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity$2;->a:Landroidx/fragment/app/FragmentActivity;

    iget-object v0, v0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/e;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/e;->a(Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method
