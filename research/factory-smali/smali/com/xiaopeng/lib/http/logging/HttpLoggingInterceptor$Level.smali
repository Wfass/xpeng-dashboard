.class public final enum Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;
.super Ljava/lang/Enum;
.source "HttpLoggingInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;

.field public static final enum BASIC:Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;

.field public static final enum BODY:Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;

.field public static final enum HEADERS:Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;

.field public static final enum NONE:Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 51
    new-instance v0, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;->NONE:Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;

    .line 52
    new-instance v0, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;

    const-string v1, "BASIC"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;->BASIC:Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;

    .line 53
    new-instance v0, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;

    const-string v1, "HEADERS"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;->HEADERS:Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;

    .line 54
    new-instance v0, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;

    const-string v1, "BODY"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;->BODY:Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;

    .line 50
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;

    sget-object v1, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;->NONE:Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;->BASIC:Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;->HEADERS:Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;->BODY:Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;

    aput-object v1, v0, v5

    sput-object v0, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;->$VALUES:[Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 50
    const-class v0, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;

    return-object v0
.end method

.method public static values()[Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;
    .locals 1

    .line 50
    sget-object v0, Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;->$VALUES:[Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;

    invoke-virtual {v0}, [Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/lib/http/logging/HttpLoggingInterceptor$Level;

    return-object v0
.end method
