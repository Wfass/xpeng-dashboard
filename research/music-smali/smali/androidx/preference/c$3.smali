.class Landroidx/preference/c$3;
.super Ljava/lang/Object;
.source "PreferenceGroupAdapter.java"

# interfaces
.implements Landroidx/preference/Preference$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/preference/c;->a(Landroidx/preference/PreferenceGroup;Ljava/util/List;)Landroidx/preference/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/preference/PreferenceGroup;

.field final synthetic b:Landroidx/preference/c;


# direct methods
.method constructor <init>(Landroidx/preference/c;Landroidx/preference/PreferenceGroup;)V
    .locals 0

    .line 293
    iput-object p1, p0, Landroidx/preference/c$3;->b:Landroidx/preference/c;

    iput-object p2, p0, Landroidx/preference/c$3;->a:Landroidx/preference/PreferenceGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/preference/Preference;)Z
    .locals 2

    .line 296
    iget-object v0, p0, Landroidx/preference/c$3;->a:Landroidx/preference/PreferenceGroup;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->a(I)V

    .line 297
    iget-object v0, p0, Landroidx/preference/c$3;->b:Landroidx/preference/c;

    invoke-virtual {v0, p1}, Landroidx/preference/c;->b(Landroidx/preference/Preference;)V

    .line 298
    iget-object p1, p0, Landroidx/preference/c$3;->a:Landroidx/preference/PreferenceGroup;

    .line 299
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->f()Landroidx/preference/PreferenceGroup$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 301
    invoke-interface {p1}, Landroidx/preference/PreferenceGroup$a;->a()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
