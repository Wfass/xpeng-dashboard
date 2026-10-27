.class public Lcom/android/car/media/common/source/c$a;
.super Ljava/lang/Object;
.source "MediaSourceColors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/media/common/source/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/android/car/media/common/source/c$a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/android/car/media/common/source/c;
    .locals 6

    if-nez p1, :cond_0

    .line 103
    invoke-static {}, Lcom/android/car/media/common/source/c;->a()Lcom/android/car/media/common/source/c;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 107
    :try_start_0
    iget-object v1, p0, Lcom/android/car/media/common/source/c$a;->a:Landroid/content/Context;

    .line 108
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 112
    iget-object v2, p0, Lcom/android/car/media/common/source/c$a;->a:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p1

    .line 113
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.google.android.gms.car.application.theme"

    .line 114
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    if-nez v2, :cond_2

    .line 116
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->theme:I

    .line 119
    :cond_2
    invoke-virtual {p1, v2}, Landroid/content/Context;->setTheme(I)V

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const/4 v1, 0x3

    .line 121
    new-array v1, v1, [I

    const v2, 0x1010433

    aput v2, v1, v3

    const v2, 0x1010435

    const/4 v4, 0x1

    aput v2, v1, v4

    const v2, 0x1010434

    const/4 v5, 0x2

    aput v2, v1, v5

    invoke-virtual {p1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 126
    new-instance p1, Lcom/android/car/media/common/source/c;

    .line 127
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 128
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 129
    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-direct {p1, v1, v2, v3}, Lcom/android/car/media/common/source/c;-><init>(III)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    .line 135
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_3
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    const-string v1, "MediaSourceColors.Factory"

    const-string v2, "Unable to update media client package attributes."

    .line 131
    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    invoke-static {}, Lcom/android/car/media/common/source/c;->a()Lcom/android/car/media/common/source/c;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_4

    .line 135
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_4
    return-object p1

    :goto_1
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 137
    :cond_5
    throw p1
.end method
