.class public final enum Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener$RESULT;
.super Ljava/lang/Enum;
.source "ISecurityModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RESULT"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener$RESULT;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener$RESULT;

.field public static final enum FAIL:Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener$RESULT;

.field public static final enum SUCCEED:Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener$RESULT;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 23
    new-instance v0, Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener$RESULT;

    const-string v1, "FAIL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener$RESULT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener$RESULT;->FAIL:Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener$RESULT;

    .line 27
    new-instance v1, Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener$RESULT;

    const-string v3, "SUCCEED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener$RESULT;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener$RESULT;->SUCCEED:Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener$RESULT;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener$RESULT;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 19
    sput-object v3, Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener$RESULT;->$VALUES:[Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener$RESULT;

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

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener$RESULT;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 19
    const-class v0, Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener$RESULT;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener$RESULT;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener$RESULT;
    .locals 1

    .line 19
    sget-object v0, Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener$RESULT;->$VALUES:[Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener$RESULT;

    invoke-virtual {v0}, [Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener$RESULT;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener$RESULT;

    return-object v0
.end method
