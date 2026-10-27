.class public final enum Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;
.super Ljava/lang/Enum;
.source "BaseAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnimationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;

.field public static final enum ALPHA:Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;

.field public static final enum FLIP_HORIZON:Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;

.field public static final enum FLIP_VERTICAL:Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;

.field public static final enum HORIZON_CROSS:Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;

.field public static final enum HORIZON_LEFT:Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;

.field public static final enum HORIZON_RIGHT:Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;

.field public static final enum ROTATE:Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;

.field public static final enum ROTATE_CENTER:Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;

.field public static final enum SCALE:Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 22
    new-instance v0, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;

    const-string v1, "ALPHA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;->ALPHA:Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;

    new-instance v1, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;

    const-string v3, "ROTATE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;->ROTATE:Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;

    new-instance v3, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;

    const-string v5, "ROTATE_CENTER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;->ROTATE_CENTER:Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;

    new-instance v5, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;

    const-string v7, "HORIZON_LEFT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;->HORIZON_LEFT:Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;

    new-instance v7, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;

    const-string v9, "HORIZON_RIGHT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;->HORIZON_RIGHT:Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;

    new-instance v9, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;

    const-string v11, "HORIZON_CROSS"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;->HORIZON_CROSS:Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;

    new-instance v11, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;

    const-string v13, "SCALE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;->SCALE:Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;

    new-instance v13, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;

    const-string v15, "FLIP_HORIZON"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;->FLIP_HORIZON:Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;

    new-instance v15, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;

    const-string v14, "FLIP_VERTICAL"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;->FLIP_VERTICAL:Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;

    const/16 v14, 0x9

    new-array v14, v14, [Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v12

    .line 21
    sput-object v14, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;->$VALUES:[Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 21
    const-class v0, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;
    .locals 1

    .line 21
    sget-object v0, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;->$VALUES:[Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;

    invoke-virtual {v0}, [Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;

    return-object v0
.end method
