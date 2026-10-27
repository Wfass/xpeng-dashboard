.class Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionParameters;
.super Ljava/lang/Object;
.source "CarUxRestrictionsServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/CarUxRestrictionsServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestrictionParameters"
.end annotation


# instance fields
.field mMaxContentDepth:I

.field mMaxCumulativeContentItems:I

.field mMaxStringLength:I

.field final synthetic this$0:Lcom/android/car/CarUxRestrictionsServiceHelper;


# direct methods
.method private constructor <init>(Lcom/android/car/CarUxRestrictionsServiceHelper;)V
    .locals 0

    .line 403
    iput-object p1, p0, Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionParameters;->this$0:Lcom/android/car/CarUxRestrictionsServiceHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 404
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionParameters;->mMaxStringLength:I

    .line 405
    iput p1, p0, Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionParameters;->mMaxCumulativeContentItems:I

    .line 406
    iput p1, p0, Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionParameters;->mMaxContentDepth:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/car/CarUxRestrictionsServiceHelper;Lcom/android/car/CarUxRestrictionsServiceHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/car/CarUxRestrictionsServiceHelper;
    .param p2, "x1"    # Lcom/android/car/CarUxRestrictionsServiceHelper$1;

    .line 403
    invoke-direct {p0, p1}, Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionParameters;-><init>(Lcom/android/car/CarUxRestrictionsServiceHelper;)V

    return-void
.end method
