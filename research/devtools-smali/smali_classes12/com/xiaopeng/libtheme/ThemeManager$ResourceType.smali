.class public Lcom/xiaopeng/libtheme/ThemeManager$ResourceType;
.super Ljava/lang/Object;
.source "ThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/libtheme/ThemeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResourceType"
.end annotation


# static fields
.field public static final ANIM:I = 0x0

.field public static final ARRAY:I = 0x1

.field public static final ATTR:I = 0x2

.field public static final BOOL:I = 0x3

.field public static final COLOR:I = 0x4

.field public static final DIMEN:I = 0x5

.field public static final DRAWABLE:I = 0x6

.field public static final ID:I = 0x7

.field public static final INTEGER:I = 0x8

.field public static final LAYOUT:I = 0x9

.field public static final MIPMAP:I = 0xa

.field public static final STRING:I = 0xb

.field public static final STYLE:I = 0xc

.field public static final STYLEABLE:I = 0xd

.field public static final sResourceType:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 196
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/libtheme/ThemeManager$ResourceType;->sResourceType:Ljava/util/HashMap;

    .line 212
    sget-object v0, Lcom/xiaopeng/libtheme/ThemeManager$ResourceType;->sResourceType:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 213
    sget-object v0, Lcom/xiaopeng/libtheme/ThemeManager$ResourceType;->sResourceType:Ljava/util/HashMap;

    const-string v1, "anim"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v0, Lcom/xiaopeng/libtheme/ThemeManager$ResourceType;->sResourceType:Ljava/util/HashMap;

    const-string v1, "array"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object v0, Lcom/xiaopeng/libtheme/ThemeManager$ResourceType;->sResourceType:Ljava/util/HashMap;

    const-string v1, "attr"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v0, Lcom/xiaopeng/libtheme/ThemeManager$ResourceType;->sResourceType:Ljava/util/HashMap;

    const-string v1, "bool"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v0, Lcom/xiaopeng/libtheme/ThemeManager$ResourceType;->sResourceType:Ljava/util/HashMap;

    const-string v1, "color"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v0, Lcom/xiaopeng/libtheme/ThemeManager$ResourceType;->sResourceType:Ljava/util/HashMap;

    const-string v1, "dimen"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sget-object v0, Lcom/xiaopeng/libtheme/ThemeManager$ResourceType;->sResourceType:Ljava/util/HashMap;

    const-string v1, "drawable"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object v0, Lcom/xiaopeng/libtheme/ThemeManager$ResourceType;->sResourceType:Ljava/util/HashMap;

    const-string v1, "id"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v0, Lcom/xiaopeng/libtheme/ThemeManager$ResourceType;->sResourceType:Ljava/util/HashMap;

    const-string v1, "integer"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v0, Lcom/xiaopeng/libtheme/ThemeManager$ResourceType;->sResourceType:Ljava/util/HashMap;

    const-string v1, "layout"

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    sget-object v0, Lcom/xiaopeng/libtheme/ThemeManager$ResourceType;->sResourceType:Ljava/util/HashMap;

    const-string v1, "mipmap"

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v0, Lcom/xiaopeng/libtheme/ThemeManager$ResourceType;->sResourceType:Ljava/util/HashMap;

    const-string v1, "string"

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v0, Lcom/xiaopeng/libtheme/ThemeManager$ResourceType;->sResourceType:Ljava/util/HashMap;

    const-string v1, "style"

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v0, Lcom/xiaopeng/libtheme/ThemeManager$ResourceType;->sResourceType:Ljava/util/HashMap;

    const-string v1, "styleable"

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getType(Ljava/lang/String;)I
    .locals 1

    .line 229
    nop

    .line 230
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    sget-object v0, Lcom/xiaopeng/libtheme/ThemeManager$ResourceType;->sResourceType:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    .line 233
    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method
