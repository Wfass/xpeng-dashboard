.class public Laid$e;
.super Ljava/lang/Object;
.source "AospPlaybackViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 813
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 814
    iput p1, p0, Laid$e;->a:I

    .line 815
    iput-object p2, p0, Laid$e;->b:Ljava/lang/String;

    .line 816
    iput-object p3, p0, Laid$e;->c:Ljava/lang/String;

    .line 817
    iput-object p4, p0, Laid$e;->d:Landroid/os/Bundle;

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 1

    .line 871
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 873
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to get resources for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AospPlaybackViewModel"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/android/car/media/common/b;
    .locals 3

    .line 849
    iget-object v0, p0, Laid$e;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 850
    iget v0, p0, Laid$e;->a:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    .line 852
    :cond_0
    invoke-direct {p0, p1, v0}, Laid$e;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    .line 861
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 862
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 861
    invoke-virtual {v0, v2, p1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 863
    iget p1, p0, Laid$e;->a:I

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 866
    :goto_0
    new-instance v0, Lcom/android/car/media/common/b;

    iget-object v1, p0, Laid$e;->c:Ljava/lang/String;

    iget-object v2, p0, Laid$e;->d:Landroid/os/Bundle;

    invoke-direct {v0, p1, v1, v2}, Lcom/android/car/media/common/b;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 823
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 825
    :cond_1
    check-cast p1, Laid$e;

    .line 827
    iget v2, p0, Laid$e;->a:I

    iget v3, p1, Laid$e;->a:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Laid$e;->b:Ljava/lang/String;

    iget-object v3, p1, Laid$e;->b:Ljava/lang/String;

    .line 828
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Laid$e;->c:Ljava/lang/String;

    iget-object v3, p1, Laid$e;->c:Ljava/lang/String;

    .line 829
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Laid$e;->d:Landroid/os/Bundle;

    iget-object p1, p1, Laid$e;->d:Landroid/os/Bundle;

    .line 830
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    .line 835
    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Laid$e;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Laid$e;->b:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Laid$e;->c:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Laid$e;->d:Landroid/os/Bundle;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
