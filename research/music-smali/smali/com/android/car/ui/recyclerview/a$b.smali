.class public final enum Lcom/android/car/ui/recyclerview/a$b;
.super Ljava/lang/Enum;
.source "CarUiContentListItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/ui/recyclerview/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/car/ui/recyclerview/a$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/car/ui/recyclerview/a$b;

.field public static final enum AVATAR:Lcom/android/car/ui/recyclerview/a$b;

.field public static final enum CONTENT:Lcom/android/car/ui/recyclerview/a$b;

.field public static final enum STANDARD:Lcom/android/car/ui/recyclerview/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 63
    new-instance v0, Lcom/android/car/ui/recyclerview/a$b;

    const/4 v1, 0x0

    const-string v2, "CONTENT"

    invoke-direct {v0, v2, v1}, Lcom/android/car/ui/recyclerview/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/car/ui/recyclerview/a$b;->CONTENT:Lcom/android/car/ui/recyclerview/a$b;

    .line 67
    new-instance v0, Lcom/android/car/ui/recyclerview/a$b;

    const/4 v2, 0x1

    const-string v3, "STANDARD"

    invoke-direct {v0, v3, v2}, Lcom/android/car/ui/recyclerview/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/car/ui/recyclerview/a$b;->STANDARD:Lcom/android/car/ui/recyclerview/a$b;

    .line 72
    new-instance v0, Lcom/android/car/ui/recyclerview/a$b;

    const/4 v3, 0x2

    const-string v4, "AVATAR"

    invoke-direct {v0, v4, v3}, Lcom/android/car/ui/recyclerview/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/car/ui/recyclerview/a$b;->AVATAR:Lcom/android/car/ui/recyclerview/a$b;

    const/4 v0, 0x3

    .line 59
    new-array v0, v0, [Lcom/android/car/ui/recyclerview/a$b;

    sget-object v4, Lcom/android/car/ui/recyclerview/a$b;->CONTENT:Lcom/android/car/ui/recyclerview/a$b;

    aput-object v4, v0, v1

    sget-object v1, Lcom/android/car/ui/recyclerview/a$b;->STANDARD:Lcom/android/car/ui/recyclerview/a$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/car/ui/recyclerview/a$b;->AVATAR:Lcom/android/car/ui/recyclerview/a$b;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/car/ui/recyclerview/a$b;->$VALUES:[Lcom/android/car/ui/recyclerview/a$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/car/ui/recyclerview/a$b;
    .locals 1

    .line 59
    const-class v0, Lcom/android/car/ui/recyclerview/a$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/car/ui/recyclerview/a$b;

    return-object p0
.end method

.method public static values()[Lcom/android/car/ui/recyclerview/a$b;
    .locals 1

    .line 59
    sget-object v0, Lcom/android/car/ui/recyclerview/a$b;->$VALUES:[Lcom/android/car/ui/recyclerview/a$b;

    invoke-virtual {v0}, [Lcom/android/car/ui/recyclerview/a$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/car/ui/recyclerview/a$b;

    return-object v0
.end method
