.class public final enum Lcom/xiaopeng/musicradio/widget/scrollindicator/c$a;
.super Ljava/lang/Enum;
.source "ScrollBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/widget/scrollindicator/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/musicradio/widget/scrollindicator/c$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/musicradio/widget/scrollindicator/c$a;

.field public static final enum BOTTOM:Lcom/xiaopeng/musicradio/widget/scrollindicator/c$a;

.field public static final enum BOTTOM_FLOAT:Lcom/xiaopeng/musicradio/widget/scrollindicator/c$a;

.field public static final enum CENTENT:Lcom/xiaopeng/musicradio/widget/scrollindicator/c$a;

.field public static final enum CENTENT_BACKGROUND:Lcom/xiaopeng/musicradio/widget/scrollindicator/c$a;

.field public static final enum TOP:Lcom/xiaopeng/musicradio/widget/scrollindicator/c$a;

.field public static final enum TOP_FLOAT:Lcom/xiaopeng/musicradio/widget/scrollindicator/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 7
    new-instance v0, Lcom/xiaopeng/musicradio/widget/scrollindicator/c$a;

    const/4 v1, 0x0

    const-string v2, "TOP"

    invoke-direct {v0, v2, v1}, Lcom/xiaopeng/musicradio/widget/scrollindicator/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/musicradio/widget/scrollindicator/c$a;->TOP:Lcom/xiaopeng/musicradio/widget/scrollindicator/c$a;

    .line 8
    new-instance v0, Lcom/xiaopeng/musicradio/widget/scrollindicator/c$a;

    const/4 v2, 0x1

    const-string v3, "TOP_FLOAT"

    invoke-direct {v0, v3, v2}, Lcom/xiaopeng/musicradio/widget/scrollindicator/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/musicradio/widget/scrollindicator/c$a;->TOP_FLOAT:Lcom/xiaopeng/musicradio/widget/scrollindicator/c$a;

    .line 9
    new-instance v0, Lcom/xiaopeng/musicradio/widget/scrollindicator/c$a;

    const/4 v3, 0x2

    const-string v4, "BOTTOM"

    invoke-direct {v0, v4, v3}, Lcom/xiaopeng/musicradio/widget/scrollindicator/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/musicradio/widget/scrollindicator/c$a;->BOTTOM:Lcom/xiaopeng/musicradio/widget/scrollindicator/c$a;

    .line 10
    new-instance v0, Lcom/xiaopeng/musicradio/widget/scrollindicator/c$a;

    const/4 v4, 0x3

    const-string v5, "BOTTOM_FLOAT"

    invoke-direct {v0, v5, v4}, Lcom/xiaopeng/musicradio/widget/scrollindicator/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/musicradio/widget/scrollindicator/c$a;->BOTTOM_FLOAT:Lcom/xiaopeng/musicradio/widget/scrollindicator/c$a;

    .line 11
    new-instance v0, Lcom/xiaopeng/musicradio/widget/scrollindicator/c$a;

    const/4 v5, 0x4

    const-string v6, "CENTENT"

    invoke-direct {v0, v6, v5}, Lcom/xiaopeng/musicradio/widget/scrollindicator/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/musicradio/widget/scrollindicator/c$a;->CENTENT:Lcom/xiaopeng/musicradio/widget/scrollindicator/c$a;

    .line 12
    new-instance v0, Lcom/xiaopeng/musicradio/widget/scrollindicator/c$a;

    const/4 v6, 0x5

    const-string v7, "CENTENT_BACKGROUND"

    invoke-direct {v0, v7, v6}, Lcom/xiaopeng/musicradio/widget/scrollindicator/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/musicradio/widget/scrollindicator/c$a;->CENTENT_BACKGROUND:Lcom/xiaopeng/musicradio/widget/scrollindicator/c$a;

    const/4 v0, 0x6

    .line 6
    new-array v0, v0, [Lcom/xiaopeng/musicradio/widget/scrollindicator/c$a;

    sget-object v7, Lcom/xiaopeng/musicradio/widget/scrollindicator/c$a;->TOP:Lcom/xiaopeng/musicradio/widget/scrollindicator/c$a;

    aput-object v7, v0, v1

    sget-object v1, Lcom/xiaopeng/musicradio/widget/scrollindicator/c$a;->TOP_FLOAT:Lcom/xiaopeng/musicradio/widget/scrollindicator/c$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaopeng/musicradio/widget/scrollindicator/c$a;->BOTTOM:Lcom/xiaopeng/musicradio/widget/scrollindicator/c$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaopeng/musicradio/widget/scrollindicator/c$a;->BOTTOM_FLOAT:Lcom/xiaopeng/musicradio/widget/scrollindicator/c$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaopeng/musicradio/widget/scrollindicator/c$a;->CENTENT:Lcom/xiaopeng/musicradio/widget/scrollindicator/c$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaopeng/musicradio/widget/scrollindicator/c$a;->CENTENT_BACKGROUND:Lcom/xiaopeng/musicradio/widget/scrollindicator/c$a;

    aput-object v1, v0, v6

    sput-object v0, Lcom/xiaopeng/musicradio/widget/scrollindicator/c$a;->$VALUES:[Lcom/xiaopeng/musicradio/widget/scrollindicator/c$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/musicradio/widget/scrollindicator/c$a;
    .locals 1

    .line 6
    const-class v0, Lcom/xiaopeng/musicradio/widget/scrollindicator/c$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/c$a;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/musicradio/widget/scrollindicator/c$a;
    .locals 1

    .line 6
    sget-object v0, Lcom/xiaopeng/musicradio/widget/scrollindicator/c$a;->$VALUES:[Lcom/xiaopeng/musicradio/widget/scrollindicator/c$a;

    invoke-virtual {v0}, [Lcom/xiaopeng/musicradio/widget/scrollindicator/c$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/musicradio/widget/scrollindicator/c$a;

    return-object v0
.end method
