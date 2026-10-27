.class Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;
.super Ljava/lang/Object;
.source "PreferenceGroupAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/preference/PreferenceGroupAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreferenceLayout"
.end annotation


# instance fields
.field private mName:Ljava/lang/String;

.field private mResId:I

.field private mWidgetResId:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;)V
    .locals 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iget v0, p1, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->mResId:I

    iput v0, p0, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->mResId:I

    .line 96
    iget v0, p1, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->mWidgetResId:I

    iput v0, p0, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->mWidgetResId:I

    .line 97
    iget-object p1, p1, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->mName:Ljava/lang/String;

    iput-object p1, p0, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->mName:Ljava/lang/String;

    .line 98
    return-void
.end method

.method static synthetic access$102(Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 87
    iput-object p1, p0, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->mName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;)I
    .locals 0

    .line 87
    iget p0, p0, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->mResId:I

    return p0
.end method

.method static synthetic access$202(Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;I)I
    .locals 0

    .line 87
    iput p1, p0, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->mResId:I

    return p1
.end method

.method static synthetic access$300(Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;)I
    .locals 0

    .line 87
    iget p0, p0, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->mWidgetResId:I

    return p0
.end method

.method static synthetic access$302(Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;I)I
    .locals 0

    .line 87
    iput p1, p0, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->mWidgetResId:I

    return p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 102
    instance-of v0, p1, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 103
    return v1

    .line 105
    :cond_0
    check-cast p1, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;

    .line 106
    iget v0, p0, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->mResId:I

    iget v2, p1, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->mResId:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->mWidgetResId:I

    iget v2, p1, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->mWidgetResId:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->mName:Ljava/lang/String;

    iget-object p1, p1, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->mName:Ljava/lang/String;

    .line 108
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 113
    nop

    .line 114
    iget v0, p0, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->mResId:I

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    .line 115
    const/16 v0, 0x1f

    mul-int/2addr v1, v0

    iget v2, p0, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->mWidgetResId:I

    add-int/2addr v1, v2

    .line 116
    mul-int/2addr v0, v1

    iget-object v1, p0, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->mName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 117
    return v0
.end method
