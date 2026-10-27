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
    .locals 11

    .line 22
    new-instance v0, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;

    const-string v1, "ALPHA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;->ALPHA:Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;

    new-instance v0, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;

    const-string v1, "ROTATE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;->ROTATE:Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;

    new-instance v0, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;

    const-string v1, "ROTATE_CENTER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;->ROTATE_CENTER:Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;

    new-instance v0, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;

    const-string v1, "HORIZON_LEFT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;->HORIZON_LEFT:Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;

    new-instance v0, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;

    const-string v1, "HORIZON_RIGHT"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;->HORIZON_RIGHT:Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;

    new-instance v0, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;

    const-string v1, "HORIZON_CROSS"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;->HORIZON_CROSS:Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;

    new-instance v0, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;

    const-string v1, "SCALE"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;->SCALE:Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;

    new-instance v0, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;

    const-string v1, "FLIP_HORIZON"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;->FLIP_HORIZON:Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;

    new-instance v0, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;

    const-string v1, "FLIP_VERTICAL"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;->FLIP_VERTICAL:Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;

    .line 21
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;

    sget-object v1, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;->ALPHA:Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;->ROTATE:Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;->ROTATE_CENTER:Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;->HORIZON_LEFT:Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;->HORIZON_RIGHT:Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;->HORIZON_CROSS:Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;->SCALE:Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;->FLIP_HORIZON:Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;->FLIP_VERTICAL:Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;

    aput-object v1, v0, v10

    sput-object v0, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;->$VALUES:[Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;

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
    .param p0, "name"    # Ljava/lang/String;
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

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lib/utils/view/anim/BaseAnimation$AnimationType;

    return-object v0
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
