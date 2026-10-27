.class Labo$c;
.super Ljava/lang/Object;
.source "TypeUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# static fields
.field static final a:[Ljava/lang/String;

.field static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/16 v0, 0x80

    .line 172
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    move v2, v1

    .line 173
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 174
    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    int-to-char v2, v2

    goto :goto_0

    .line 176
    :cond_0
    sput-object v0, Labo$c;->a:[Ljava/lang/String;

    const/16 v0, 0x2341

    .line 178
    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x2

    .line 179
    new-array v2, v2, [C

    const/16 v3, 0x20

    move v4, v3

    :goto_1
    const/16 v5, 0x7e

    if-gt v4, v5, :cond_2

    move v6, v3

    :goto_2
    if-gt v6, v5, :cond_1

    add-int/lit8 v7, v4, -0x20

    mul-int/lit8 v7, v7, 0x5f

    add-int/lit8 v8, v6, -0x20

    add-int/2addr v7, v8

    aput-char v4, v2, v1

    const/4 v8, 0x1

    aput-char v6, v2, v8

    .line 185
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v2}, Ljava/lang/String;-><init>([C)V

    aput-object v8, v0, v7

    add-int/lit8 v6, v6, 0x1

    int-to-char v6, v6

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    int-to-char v4, v4

    goto :goto_1

    .line 188
    :cond_2
    sput-object v0, Labo$c;->b:[Ljava/lang/String;

    return-void
.end method
