.class public Lcom/xiaopeng/xuimanager/operation/OperationType;
.super Ljava/lang/Object;
.source "OperationType.java"


# static fields
.field public static final AI_SPEECH:I = 0x102d04

.field public static final AVATAR:I = 0x107c50

.field public static final COMMON_FILE:I = 0x107d7c

.field public static final EGG:I = 0x107b88

.field public static final LLU:I = 0xf69b5

.field public static final NAVI_RESOURCE:I = 0x107cb4

.field public static final SUPPORT_TYPES:[I

.field public static final SYS_CONFIG:I = 0x107d18

.field public static final TEXT_RRO:I = 0x107de0

.field public static final THEME:I = 0x107b24

.field public static final THEME_ELEMENT_TYPE_END:I = 0x107b87

.field public static final THEME_ELEMENT_TYPE_START:I = 0x107b25

.field public static final THEME_OPERATION:I = 0x107b24

.field public static final THEME_SR:I = 0x107b26

.field public static final THEME_XIAO_P:I = 0x107b25

.field public static final WELCOME_SOUND:I = 0x107bec


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [I

    .line 82
    fill-array-data v0, :array_0

    sput-object v0, Lcom/xiaopeng/xuimanager/operation/OperationType;->SUPPORT_TYPES:[I

    return-void

    :array_0
    .array-data 4
        0xf69b5
        0x102d04
        0x107b24
        0x107b88
        0x107bec
        0x107c50
        0x107cb4
        0x107d18
        0x107d7c
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
